<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@include file="/common/top.jsp"%>  <%--头部--%>
<%@include file="/common/left.jsp"%>  <%--中间-左--%>
<!-- 右侧主体开始 -->
<div class="wrapper">
    <!-- 右侧主体开始 -->
    <div class="page-content">
        <div class="content">
            <!-- 右侧内容框架，更改从这里开始 -->
            <form class="layui-form" method="post" action="/circuit/updateCircuit?id=${circuit.id}">
                <div class="layui-form-item">
                    <label for="cNumber" class="layui-form-label" style="width: 100px;">
                        线路编号：
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="cNumber" name="cNumber" autocomplete="off" class="layui-input" placeholder="请输入线路编号" value="${circuit.cNumber}">
                    </div>
                    <label for="cName" class="layui-form-label" style="width: 100px;">
                        线路名称：
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="cName" name="cName" autocomplete="off" class="layui-input" placeholder="请输入线路名称" value="${circuit.cNumber}">
                    </div>
                </div>


                <div class="layui-form-item">
                    <label for="cLength" class="layui-form-label" style="width: 100px;">
                        线路长度：
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="cLength" name="cLength" autocomplete="off" class="layui-input" placeholder="请输入线路长度" value="${circuit.cLength}">
                    </div>

                    <label for="loopLength" class="layui-form-label" style="width: 100px;">
                        回路长度：
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="loopLength" name="loopLength" autocomplete="off" class="layui-input" placeholder="请输入回路长度" value="${circuit.loopLength}">
                    </div>
                </div>

                <div class="layui-form-item">
                    <label for="LAY_demorange_s" class="layui-form-label" style="width: 100px;">
                        投运日期：
                    </label>
                    <div class="layui-input-inline xbs768">
                        <input class="layui-input" placeholder="请选择投运日期" id="LAY_demorange_s"
                               name="commissioningData" value="<fmt:formatDate value="${circuit.commissioningData}" pattern="yyyy-MM-dd"/>"
                        >
                    </div>

                    <label for="grade" class="layui-form-label" style="width: 100px;">
                        电压等级：
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="grade" name="grade" autocomplete="off" class="layui-input" placeholder="请输入电压等级" value="${circuit.grade}">
                    </div>
                </div>

                <div class="layui-form-item">
                    <label for="riseTid" class="layui-form-label" style="width: 100px;">
                        起始杆号：
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="riseTid" name="riseTid" autocomplete="off" class="layui-input" placeholder="请输起始杆号" value="${circuit.riseTid}">
                    </div>

                    <label for="endTid" class="layui-form-label" style="width: 100px;">
                        终止杆号：
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="endTid" name="endTid" autocomplete="off" class="layui-input" placeholder="请输入终止杆号" value="${circuit.endTid}">
                    </div>
                </div>

                <div class="layui-form-item">
                    <label class="layui-form-label" style="width: 100px;">是否启用：</label>
                    <div class="layui-input-block">

                            <span style="white-space:pre"></span>
                            <input type="radio" name="yState"  value="0" title="启用"
                                   <c:if test="${circuit.yState==0}"> checked="checked"  </c:if>>


                        <span style="white-space:pre"></span>
                        <input type="radio" name="yState"  value="1" title="停用"
                               <c:if test="${circuit.yState==1}"> checked="checked"   </c:if>>
                    </div>
                </div>
                <input type="hidden" name="cState" value="${circuit.cState}">
                <div class="layui-form-item layui-form-text" >
                    <label class="layui-form-label" style="width: 100px;">备注：</label>
                    <div class="layui-input-block" style="margin-left: 130px;width: 510px">
                        <textarea name="cRemark" placeholder="请输入内容" class="layui-textarea" >
                            ${circuit.cRemark}
                        </textarea>
                    </div>
                    <div class="layui-form-item">
                        <input type="submit" class="layui-btn" value="保存修改">
                        <a href="" class="layui-btn">返回</a>
                    </div>
                </div>
            </form>
            <!-- 右侧内容框架，更改从这里结束 -->
        </div>
    </div>
    <!-- 右侧主体结束 -->
</div>
<!-- 右侧主体结束 -->
</div>
<%@include file="/common/footer.jsp"%>