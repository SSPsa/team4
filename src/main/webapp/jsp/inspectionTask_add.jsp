
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
            <form class="layui-form">
                <div class="layui-form-item">
                    <label class="layui-form-label">
                        任务编码：
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" required=""
                               autocomplete="off" class="layui-input">
                    </div>
                    <label class="layui-form-label">
                        任务名称：
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" required=""
                               autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">
                        <span class="x-red"></span>巡检路线:
                    </label>
                    <div class="layui-input-inline">
                        <select lay-filter="test">

                            <option value="0">--请选择--</option>
                            <option value="1">--请选择--</option>
                          <c:forEach items="${addlistCircuit}" var="listcircuit">
                              <option value="${listcircuit.id}">${listcircuit.cNumber}</option>
                          </c:forEach>
                        </select>
                    </div>

                    <label class="layui-form-label">
                        <span class="x-red"></span>巡检员:
                    </label>
                    <div class="layui-input-inline">
                        <textarea name="" class="layui-input" style="width: 200px;height: 100px"></textarea>
                    </div>
                </div>


                <div class="layui-form-item">
                    <label class="layui-form-label">
                        <span class="x-red"></span>起始杆号:
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" required=""
                               autocomplete="off" class="layui-input" value="">
                    </div>

                    <label class="layui-form-label">
                        <span class="x-red"></span>终止杆号:
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" required=""
                               autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">
                        <span class="x-red"></span>下发人:
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" required=""
                               autocomplete="off" class="layui-input" placeholder="admin">
                    </div>

                    <label class="layui-form-label">
                        <span class="x-red"></span>下发日期：
                    </label>
                    <div class="layui-input-inline">
                        <input class="layui-input"  id="LAY_demorange_s">
                    </div>

                </div>
                <div class="layui-input-inline">
                    <label class="layui-form-label">
                        <span class="x-red"></span>备注:
                    </label>
                    <div class="layui-input-inline">
                        <textarea name=""class="layui-input" style="width: 200px;height: 100px"></textarea>
                    </div>
                </div>

                <div class="layui-form-item">
                    <%--占位--%>
                    <label  class="layui-form-label">
                    </label>
                    <label  class="layui-form-label">
                    </label>

                    <button  class="layui-btn" lay-filter="add" lay-submit="">
                        保存
                    </button>
                    <button  class="layui-btn" lay-filter="add" lay-submit="">
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
    layui.use('form',function(){});<!--加载form模块-->
    </script>
<script>
    var form = layui.form();
    form.on('select(test)', function(data){
        alert("1")
        console.log(data);
    });

    function addlistCircuits(circuitid){

        var id= circuitid.value;
        alert(id);
        $.ajax({
            type:"get",
            url:"/PollingMission/addShowpollingMissionid?id="+id,
            success:function(data){
                if(data != null){
                    $("#categoryLevel3").html(options);
                }
            }
        });
    }



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
