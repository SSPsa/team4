<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@include file="/common/top.jsp"%>  <%--头部--%>
<%@include file="/common/left.jsp"%>  <%--中间-左--%>
<!-- 中部开始 -->
<div class="wrapper">
    <form class="layui-form xbs" action="/tower/update?id=${towerSelId.id}" method="post">
    <!-- 右侧主体开始 -->
    <div class="page-content">
        <div class="content">
            <!-- 右侧内容框架，更改从这里开始 -->
            <form class="layui-form"  method="post" >
                <div class="layui-form-item">
                    <label for="tNumber" class="layui-form-label" style="width: 100px;">
                        杆塔编号：
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="tNumber" name="tNumber" value="${towerSelId.tNumber}" class="layui-input">
                    </div>
                    <div class="layui-form-item">
                        <label class="layui-form-label" style="width: 100px;">启用状态：</label>
                        <div class="layui-input-block">
                            <%--<span style="white-space:pre"></span>--%>
                            <input type="radio" name="tState"  value="2" title="启用"
                            <c:if test="${towerSelId.tState==2}"> checked="checked"</c:if>>
                            <span style="white-space:pre"></span>
                            <input type="radio" name="tState"  value="1" title="停用"
                            <c:if test="${towerSelId.tState==1}"> checked="checked"</c:if>>
                        </div>
                    </div>
                    <!-- 右侧内容框架，更改从这里结束 -->
                </div>
            </form>
            <div class="layui-form-item" style="margin-top: 50px;margin-left: 140px;">
                <input type="submit"  class="layui-btn" value="确定">
                <a href="javascript:history.go(-1)" class="layui-btn">返回</a>
            </div>
        </div>
    </div>
</form>
        <!-- 右侧主体结束 -->
    </div>


    <!-- 中部结束 -->
<%@include file="/common/footer.jsp"%>

</html>
