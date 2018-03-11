<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@include file="/common/top.jsp"%>  <%--头部--%>
<%@include file="/common/left.jsp"%>  <%--中间-左--%>
<!-- 右侧主体开始 -->
<div class="page-content">
    <div class="content">
        消缺任务管理>>消缺查询
        <!-- 右侧内容框架，更改从这里开始 -->
        <form class="layui-form xbs" action="/flawMission/flawMissionPager" >
            <div class="layui-form-pane layui-row" style="text-align: center;">
                <input type="hidden" name="pageIndex" value="1">
                <div class="layui-form-item" style="display: inline-block;">
                    <label class="layui-form-label xbs768" >任务编号：</label>
                    <div class="layui-input-inline" >
                        <input type="text" name="fmNumber" value="${fmNumber}"  placeholder="请输入任务编号" autocomplete="off" class="layui-input">
                    </div>
                    <label class="layui-form-label xbs768">任务状态：</label>
                    <div class="layui-input-inline">
                        <select name="fmState">
                            <option  value="0">--请选择--</option>
                            <option <c:if test="${fmState==1}">selected</c:if> value="1">待分配</option>
                            <option <c:if test="${fmState==2}">selected</c:if> value="2">已分配</option>
                            <option <c:if test="${fmState==3}">selected</c:if> value="3">执行中</option>
                            <option <c:if test="${fmState==4}">selected</c:if> value="4">已完成</option>
                        </select>
                    </div>

                    <label class="layui-form-label xbs768">缺陷类型：</label>
                    <div class="layui-input-inline">
                        <select name="fId">
                            <option value="0">--请选择--</option>
                            <option <c:if test="${fId==1}">selected</c:if> value="1">叉梁断裂</option>
                            <option <c:if test="${fId==2}">selected</c:if> value="2">拦河线断裂</option>
                            <option <c:if test="${fId==3}">selected</c:if> value="3">绝缘子爆破</option>
                            <option <c:if test="${fId==4}">selected</c:if> value="4">杆塔倾斜</option>
                            <option <c:if test="${fId==5}">selected</c:if> value="5">绝缘子爆破</option>
                            <option <c:if test="${fId==6}">selected</c:if> value="6">吊杆变形</option>
                            <option <c:if test="${fId==7}">selected</c:if> value="7">其他</option>
                        </select>
                    </div>
                    <div class="layui-input-inline">
                    </div>
                </div>
                <div class="layui-form-item" style="display: inline-block;">

                    <label class="layui-form-label xbs768">缺陷级别：</label>
                    <div class="layui-input-inline">
                        <select name="grade">
                            <option value="0">--请选择--</option>
                            <option <c:if test="${grade==1}">selected</c:if> value="1">一般</option>
                            <option <c:if test="${grade==2}">selected</c:if> value="2">严重</option>
                            <option <c:if test="${grade==3}">selected</c:if> value="3">紧急</option>
                        </select>
                    </div>

                    <label  class="layui-form-label">
                        下发时间：
                    </label>
                    <div class="layui-input-inline">
                        <input class="layui-input" value="${startTime}" name="startTime" id="LAY_demorange_s">
                    </div>
                    <label  class="layui-form-label">
                        <span class="x-red">-</span>
                    </label>
                    <div class="layui-input-inline">
                        <input class="layui-input"  value="${endTime}" name="endTime" id="LAY_demorange_e">
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
                <c:forEach items="${flawMissionPager.datas}" var="flawMissionPager">
                    <tr>
                        <td>
                           ${flawMissionPager.fmNumber}
                        </td>
                        <td>
                            ${flawMissionPager.circuit.cNumber}
                        </td>
                        <td>
                            ${flawMissionPager.tower.tNumber}
                        </td>
                        <td>
                            <c:if test="${flawMissionPager.flaw.grade==1}">一般</c:if>
                            <c:if test="${flawMissionPager.flaw.grade==2}">严重</c:if>
                            <c:if test="${flawMissionPager.flaw.grade==3}">紧急</c:if>
                        </td>
                        <td >
                            ${flawMissionPager.flawType.ftName}
                        </td>

                        <td class="td-status">
                            <c:if test="${flawMissionPager.fmState==1}">
                            <span class="layui-btn layui-btn-normal layui-btn-mini" style="background: #ec5807">
                              待分配
                            </span>
                            </c:if>

                            <c:if test="${flawMissionPager.fmState==2}">
                                <span class="layui-btn layui-btn-normal layui-btn-mini">
                             已分配
                            </span>

                            </c:if>

                            <c:if test="${flawMissionPager.fmState==3}">
                             <span class="layui-btn layui-btn-normal layui-btn-mini" style="background: #ece40f">
                              执行中
                            </span>

                            </c:if>

                            <c:if test="${flawMissionPager.fmState==4}">
                            <span class="layui-btn layui-btn-normal layui-btn-mini" style="background: #1bec5e">
                              已完成
                            </span>
                            </c:if>

                        </td>
                        <td>
                            <fmt:formatDate value="${flawMissionPager.flaw.discoverTime}" pattern="yyyy-MM-dd"/>
                        </td>
                        <td >
                           ${flawMissionPager.user.uName}
                        </td>
                        <td>
                          ${flawMissionPager.flaw.completeness}%
                        </td>
                        <td>
                           ${flawMissionPager.flaw.describe}
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
            <input type="hidden" id="totalPageCount" value="${flawMissionPager.totalPage}"/>
            <c:import url="rollpage.jsp">
                <c:param name="totalCount" value="${flawMissionPager.totalRows}"/>
                <c:param name="currentPageNo" value="${flawMissionPager.pageNo}"/>
                <c:param name="totalPageCount" value="${flawMissionPager.totalPage}"/>
            </c:import>
        </form>
    </div>
</div>
<!-- 右侧主体结束 -->
</div>
<%@include file="/common/footer.jsp"%>