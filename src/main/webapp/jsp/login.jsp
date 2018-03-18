<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML>
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>电力巡检系统平台</title>

    <link href="/assets/css/style.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="/assets/js/jquery-1.8.3.min.js"></script>
</head>
<body onLoad="sendRequest()" >

<div class="videozz"></div>
<c:if test="${not empty error}">
    <div id="error" style="position: absolute;top: 50%;left: 35%;z-index:1;height: 200px;width: 300px;line-height: 50px;background: url('../images/rorre.PNG');border: 1px #89c8ff solid;">
        &nbsp;&nbsp;&nbsp;提示<a onclick="error()" style="position: absolute;right: 1%;top:-5%;cursor:pointer;">X</a>
        <p style="position: absolute;top: 20%;left: 20%">${error}</p>
        <button  onclick="error()" style="width: 100px;height: 30px; border-radius:60px;background-color: #0caff4;border: 0px;position: absolute;bottom: 10%;left: 30%;cursor:pointer;" > 确定</button>
    </div>
    <c:set var="error" value=""/>
</c:if>
<script>
    function error() {
        $("#error").hide();
    }
</script>
<div class="box">
    <div class="box-a">
        <div class="m-2">
            <div class="m-2-1">
                <form action="/log" method="post">
                    <div class="m-2-2">
                        <input type="text" name="account" placeholder="请输入账号" value="admin"/>
                    </div>
                    <div class="m-2-2">
                        <input type="password" name="password" placeholder="请输入密码" value="123"/>
                    </div>
                    <div class="m-2-2">
                        <button type="submit" value="登录" /> 登录

                    </div>

                </form>
            </div>
        </div>
        <div class="m-5">
            <div id="m-5-id-1">
                <div id="m-5-2">
                    <div id="m-5-id-2">
                    </div>
                    <div id="m-5-id-3"></div>
                </div>
            </div>
        </div>
        <div class="m-10"></div>
        <div class="m-xz7"></div>
        <div class="m-xz8 xzleft"></div>
        <div class="m-xz9"></div>
        <div class="m-xz9-1"></div>
        <div class="m-x17 xzleft"></div>
        <div class="m-x18"></div>
        <div class="m-x19 xzleft"></div>
        <div class="m-x20"></div>
        <div class="m-8"></div>
        <div class="m-9"><div class="masked1" id="sx8">电力巡检系统平台</div></div>
        <div class="m-11">
            <div class="m-k-1"><div class="t1"></div></div>
            <div class="m-k-2"><div class="t2"></div></div>
            <div class="m-k-3"><div class="t3"></div></div>
            <div class="m-k-4"><div class="t4"></div></div>
            <div class="m-k-5"><div class="t5"></div></div>
            <div class="m-k-6"><div class="t6"></div></div>
            <div class="m-k-7"><div class="t7"></div></div>
        </div>
        <div class="m-14"><div class="ss"></div></div>

        <div class="m-24" id="localtime"></div>
    </div>
</div>
<script src="/assets/js/common.min.js"></script>
<div style="text-align:center;">
    <p>来源:<a href="http://www.mycodes.net/" target="_blank">源码之家</a></p>
</div>




</body>
</html>
