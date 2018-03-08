<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>后台登录-X-admin1.1</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />
    <link rel="stylesheet" href="/css/font.css">
    <link rel="stylesheet" href="/css/xadmin.css">
    <link rel="stylesheet" href="https://cdn.bootcss.com/Swiper/3.4.2/css/swiper.min.css">
    <script type="text/javascript" src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
    <script type="text/javascript" src="https://cdn.bootcss.com/Swiper/3.4.2/js/swiper.jquery.min.js"></script>
    <script src="/lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="/js/xadmin.js"></script>
</head>
<body>
<!-- 中部开始 -->
<div class="wrapper">
    <!-- 右侧主体开始 -->
    <div class="page-content">
        <div class="content">
            <!-- 右侧内容框架，更改从这里开始 -->
            <form class="layui-form" action="/user/update" method="post" >
                <input type="hidden" name="id" value="${Userid.id}">
                <div class="layui-form-item">
                    <label class="layui-form-label">
                        <span class="x-red">*</span>登录账号:
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="layui-input"  value="${Userid.account}" name="account" required="" lay-verify="account"
                               autocomplete="off" class="layui-input">
                    </div>
                </div>
                <%--<div class="layui-form-item">--%>
                <%--<label class="layui-form-label">--%>
                <%--<span class="x-red">*</span>登录邮箱:--%>
                <%--</label>--%>
                <%--<div class="layui-input-inline">--%>
                <%--<input type="text" id="L_email"  value="${Userid.email}" name="email" required="" lay-verify="email"--%>
                <%--autocomplete="off" class="layui-input">--%>
                <%--</div>--%>
                <%--</div>--%>

                <div class="layui-form-item">
                    <label for="L_username" class="layui-form-label">
                        <span class="x-red">*</span>用户名称:
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="L_username" value="${Userid.uName}" name="uName" required="" lay-verify="nikename"
                               autocomplete="off" class="layui-input">
                    </div>
                </div>

                <div class="layui-form-item">
                    <label class="layui-form-label">
                        <span class="x-red">*</span>密码:
                    </label>
                    <div class="layui-input-inline">
                        <input type="password" id="L_pass" value="${Userid.password}" name="password" required="" lay-verify="pass"
                               autocomplete="off" class="layui-input">
                    </div>
                    <div class="layui-form-mid layui-word-aux">
                        <span class="x-red">*</span>默认初始密码：123456
                    </div>
                </div>
                <div class="layui-form-item">
                    <label for="L_username" class="layui-form-label">
                        <span class="x-red">*</span>角色：
                    </label>
                    <div class="layui-input-inline">
                        <select name="rid">
                            <option>--请选择--</option>
                            <c:if test="${not empty role}">
                                <c:forEach items="${role}" var="role">
                                    <option value="${role.id}"<c:if test="${role.id==Userid.rid}">selected="selected"</c:if>>${role.rName}</option>
                                    <%--<option>线路管理员</option>--%>
                                    <%--<option>巡检员</option>--%>
                                    <%--<option>消缺员</option>--%>
                                </c:forEach>
                            </c:if>
                        </select>
                    </div>
                </div>
                <div class="layui-form-item">
                    <label for="L_username" class="layui-form-label">
                        <span class="x-red">*</span>入职日期：
                    </label>
                    <div class="layui-input-inline">
                        <input class="layui-input"  value="<fmt:formatDate value="${Userid.entryTime}" pattern="yyyy-MM-dd"  />" name="entryTime" id="LAY_demorange_s">
                    </div>
                </div>

                <div class="layui-form-item">
                    <label for="L_username" class="layui-form-label">
                        <span class="x-red">*</span>离职日期：
                    </label>
                    <div class="layui-input-inline">
                        <input class="layui-input" value="<fmt:formatDate value="${Userid.termDate}" pattern="yyyy-MM-dd"  />" id="LAY_demorange_e">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label for="L_username" class="layui-form-label">
                        <span class="x-red">*</span>使用状态：
                    </label>
                    <div class="layui-input-inline">
                        <input type="radio"  name="ustate" required="" value="1"
                               <c:if test="${Userid.ustate==1}">checked="checked"</c:if> autocomplete="on" class="layui-input" title="正常">
                        <input type="radio"  name="ustate" required="" value="0"
                               <c:if test="${Userid.ustate==0}">checked="checked"</c:if>  autocomplete="off" class="layui-input" title="冻结">
                    </div>
                </div>


                <div class="layui-form-item">
                    <label  class="layui-form-label">
                    </label>
                    <button   type="submit" class="layui-btn" lay-filter="add" lay-submit="" >
                        增加
                    </button>
                    <button  class="layui-btn" lay-filter="add" lay-submit="" onclick="javascript:history.go(-1)">
                        返回
                    </button>
                </div>
            </form>
            <!-- 右侧内容框架，更改从这里结束 -->
        </div>
    </div>
    <!-- 右侧主体结束 -->
</div>
<!-- 中部结束 -->
<script>
    layui.use(['laydate'], function(){
        laydate = layui.laydate;//日期插件

        //以上模块根据需要引入
        //
        var start = {
//            min: laydate.now()
            min: '2002-06-16 23:59:59'
            ,max: '2099-06-16 23:59:59'
            ,istoday: false
            ,choose: function(datas){
                end.min = datas; //开始日选好后，重置结束日的最小日期
                end.start = datas //将结束日的初始值设定为开始日
            }
        };

        var end = {
            min: laydate.now()
            ,max: '2099-06-16 23:59:59'
            ,istoday: false
            ,choose: function(datas){
                start.max = datas; //结束日选好后，重置开始日的最大日期
            }
        };

        document.getElementById('LAY_demorange_s').onclick = function(){
            start.elem = this;
            laydate(start);
        }
        document.getElementById('LAY_demorange_e').onclick = function(){
            end.elem = this
            laydate(end);
        }

    });

    //百度统计可去掉
    var _hmt = _hmt || [];
    (function() {
        var hm = document.createElement("script");
        hm.src = "https://hm.baidu.com/hm.js?b393d153aeb26b46e9431fabaf0f6190";
        var s = document.getElementsByTagName("script")[0];
        s.parentNode.insertBefore(hm, s);
    })();
</script>
</body>
</html>
