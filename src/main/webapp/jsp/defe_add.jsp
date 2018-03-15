<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加缺陷</title>
    <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />
    <link rel="stylesheet" href="/css/font.css">
    <link rel="stylesheet" href="/css/xadmin.css">
    <link rel="stylesheet" href="/css/swiper.min.css">
    <script type="text/javascript" src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
    <script type="text/javascript" src="https://cdn.bootcss.com/Swiper/3.4.2/js/swiper.jquery.min.js"></script>
    <script src="/lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="/js/xadmin.js"></script>
</head>
<body>
<xblock>选择缺陷</xblock>
<input type="hidden" name="fid" value="${fid}">
<table class="layui-table">
    <thead>
    <tr>
        <th>
            选择
        </th>
        <th>
            缺陷等级
        </th>
        <th>
            缺陷描述
        </th>
        <th>
            完成度百分比
        </th>
        <th>
            发现时间
        </th>
    </tr>
    </thead>
    <tbody>
<%--两重循环才可以显示flawlist--%>
    <c:forEach items="${FlawMission_flaw}" var="FlawMission_flaws">
        <c:forEach items="${FlawMission_flaws.flawList}" var="FlawMission_flaw">
        <tr>
            <td>
                <input type="checkbox" value="1" name="">
            </td>
            <td>
                <c:if test="${FlawMission_flaw.grade==1}">一般</c:if>
                <c:if test="${FlawMission_flaw.grade==2}">严重</c:if>
                <c:if test="${FlawMission_flaw.grade==3}">紧急</c:if>
            </td>
            <td>${FlawMission_flaw.describe}</td>
            <td>${FlawMission_flaw.completeness}%</td>
            <td>
                <fmt:formatDate value="${FlawMission_flaw.discoverTime}" pattern="yyyy-MM-dd"/>

            </td>
        </tr>
        </c:forEach>
    </c:forEach>
    </tbody>
</table>
<div class="layui-form-item">
    <label  class="layui-form-label">
    </label>
    <button  class="layui-btn" lay-filter="add" lay-submit="">
        确定
    </button>
    <button  class="layui-btn" lay-filter="add" lay-submit="">
        取消
    </button>
</div>
</body>
</html>
