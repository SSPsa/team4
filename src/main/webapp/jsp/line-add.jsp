<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@include file="/common/top.jsp"%>  <%--头部--%>
<%@include file="/common/left.jsp"%>  <%--中间-左--%>
<!-- 右侧主体开始 -->
<div class="wrapper">
    <!-- 右侧主体开始 -->
    <div class="page-content">
        <div class="content">
            <!-- 右侧内容框架，更改从这里开始 -->
            <form class="layui-form">
                <div class="layui-form-item">
                    <label for="xianlubianhao" class="layui-form-label" style="width: 100px;">
                        线路编号：
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="xianlubianhao" name="xianlubianhao" autocomplete="off" class="layui-input" placeholder="请输入线路编号">
                    </div>
                    <label for="xianluName" class="layui-form-label" style="width: 100px;">
                        线路名称：
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="xianluName" name="xianluName" autocomplete="off" class="layui-input" placeholder="请输入线路名称">
                    </div>
                </div>


                <div class="layui-form-item">
                    <label for="xianluchangdu" class="layui-form-label" style="width: 100px;">
                        线路长度：
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="xianluchangdu" name="xianluchangdu" autocomplete="off" class="layui-input" placeholder="请输入线路长度">
                    </div>

                    <label for="huiluchangdu" class="layui-form-label" style="width: 100px;">
                        回路长度：
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="huiluchangdu" name="huiluchangdu" autocomplete="off" class="layui-input" placeholder="请输入回路长度">
                    </div>
                </div>

                <div class="layui-form-item">
                    <label for="LAY_demorange_s" class="layui-form-label" style="width: 100px;">
                        投运日期：
                    </label>
                    <div class="layui-input-inline xbs768">
                        <input class="layui-input" placeholder="请选择投运日期" id="LAY_demorange_s">
                    </div>

                    <label for="dianyadengji" class="layui-form-label" style="width: 100px;">
                        电压等级：
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="dianyadengji" name="huiluchangdu" autocomplete="off" class="layui-input" placeholder="请输入电压等级">
                    </div>
                </div>

                <div class="layui-form-item">
                    <label for="xianluchangdu" class="layui-form-label" style="width: 100px;">
                        起始杆号：
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="qishiganhao" name="qishiganhao" autocomplete="off" class="layui-input" placeholder="请输起始杆号">
                    </div>

                    <label for="zhongzhiganhao" class="layui-form-label" style="width: 100px;">
                        终止杆号：
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="zhongzhiganhao" name="zhongzhiganhao" autocomplete="off" class="layui-input" placeholder="请输入终止杆号">
                    </div>
                </div>

                <div class="layui-form-item">
                    <label class="layui-form-label" style="width: 100px;">是否启用：</label>
                    <div class="layui-input-block">
                        <span style="white-space:pre"> </span><input type="radio" name="sex"  value="1" title="启用">
                        <span style="white-space:pre">  </span><input type="radio" name="sex"  value="0" title="停用">
                    </div>
                </div>

                <div class="layui-form-item layui-form-text" >
                    <label class="layui-form-label" style="width: 100px;">备注：</label>
                    <div class="layui-input-block" style="margin-left: 130px;width: 510px">
                        <textarea name="desc" placeholder="请输入内容" class="layui-textarea"></textarea>
                    </div>
                <div class="layui-form-item">
                    <input type="submit" class="layui-btn" value="保存修改">
                    <a href="" class="layui-btn">返回</a>
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