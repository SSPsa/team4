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
                    <label for="L_email" class="layui-form-label" style="width: 100px;">
                        用户名：
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="L_email" name="email" required="" lay-verify="email"
                               autocomplete="off" class="layui-input" placeholder="请输入用户名">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label for="L_username" class="layui-form-label" style="width: 100px;">
                        用户名称：
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="L_username" name="username" required="" lay-verify="nikename"
                               autocomplete="off" class="layui-input" placeholder="请输入用户名">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label for="L_pass" class="layui-form-label" style="width: 100px;">
                        请输入旧密码：
                    </label>
                    <div class="layui-input-inline">
                        <input type="password" id="L_pass" name="pass" required="" lay-verify="pass"
                               autocomplete="off" class="layui-input" placeholder="请输入旧密码">
                    </div>
                    <div class="layui-form-mid layui-word-aux">
                        <span class="x-red" style="color:red">*</span>您本次登入的密码
                    </div>
                </div>

                <div class="layui-form-item">
                    <label for="L_pass" class="layui-form-label" style="width: 100px;">
                       请输入新密码：
                    </label>
                    <div class="layui-input-inline">
                        <input type="password" id="new_pass" name="pass"  lay-verify="pass"
                               autocomplete="off" class="layui-input" placeholder="请输入新密码">
                    </div>
                    <div class="layui-form-mid layui-word-aux">
                        <span class="x-red" style="color:red">*</span>新密码不少于6个字符
                    </div>
                </div>
                <div class="layui-form-item">
                    <label for="L_pass" class="layui-form-label" style="width: 100px;">
                        请输入新密码：
                    </label>
                    <div class="layui-input-inline">
                        <input type="password" id="new_pass2" name="pass" lay-verify="pass"
                               autocomplete="off" class="layui-input" placeholder="请输入新密码">
                    </div>
                    <div class="layui-form-mid layui-word-aux">
                        <span class="x-red" style="color:red">*</span>新密码不少于6个字符
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label" style="width: 100px;">性别：</label>
                    <div class="layui-input-block">
                        <span style="white-space:pre"> </span><input type="radio" name="sex"  value="1" title="男">
                        <span style="white-space:pre">  </span><input type="radio" name="sex"  value="0" title="女">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label for="age" class="layui-form-label" style="width: 100px;">
                        年龄：
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="age" name="age" required="" lay-verify="age"
                               autocomplete="off" class="layui-input" placeholder="请输入年">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label for="LAY_demorange_s" class="layui-form-label" style="width: 100px;">
                        入职日期：
                    </label>
                    <div class="layui-input-inline xbs768">
                    <input class="layui-input" placeholder="请选择入职日期" id="LAY_demorange_s">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label for="LAY_demorange_e" class="layui-form-label" style="width: 100px;">
                        离职日期：
                    </label>
                    <div class="layui-input-inline xbs768">
                    <input class="layui-input" placeholder="请选择离职日期"  id="LAY_demorange_e">
                    </div>
                </div>

                <div class="layui-form-item">
                    <label for="phone" class="layui-form-label" style="width: 100px;">
                        联系电话：
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="phone" name="email" required="" lay-verify="email"
                               autocomplete="off" class="layui-input" placeholder="请输入联系电话">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label for="email" class="layui-form-label" style="width: 100px;">
                        邮箱：
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="email" name="email" required="" lay-verify="email"
                               autocomplete="off" class="layui-input" placeholder="请输入电子邮箱">
                    </div>
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