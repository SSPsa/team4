
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
                    <label for="id" class="layui-form-label">
                        任务编号:
                    </label>
                    <div class="layui-input-inline">
                        <span id="id" >RW0245</span>
                    </div>
                </div>
                <div class="layui-form-item">
                    <label for="name" class="layui-form-label">
                        线路编号:
                    </label>
                    <div class="layui-input-inline">
                        <span id="name" >XW0010</span>
                    </div>
                </div>
                <div class="layui-form-item">
                    <label for="xianlu" class="layui-form-label">
                        杆塔编号:
                    </label>
                    <div class="layui-input-inline">
                        <span id="xianlu" >XW0001</span>
                    </div>
                </div>

                <div class="layui-form-item">
                    <label for="start" class="layui-form-label">
                        缺陷类型：
                    </label>
                    <div class="layui-input-inline">
                        <span id="start" > 拦河线断裂</span>
                    </div>
                </div>

                <div class="layui-form-item">
                    <label for="end" class="layui-form-label">
                        完好率：
                    </label>
                    <div class="layui-input-inline">
                        <span id="end" >79%</span>
                    </div>
                </div>

                <div class="layui-form-item">
                    <label for="xiafaren" class="layui-form-label">
                        缺陷描述：
                    </label>
                    <div class="layui-input-inline">
                        <span id="xiafaren" >拦河线断裂严重 </span>
                    </div>
                </div>

                <div class="layui-form-item">
                    <label for="date" class="layui-form-label">
                        发现时间：
                    </label>
                    <div class="layui-input-inline">
                        <span id="date" >2013-1-12</span>
                    </div>
                </div>
                <div class="layui-form-item">
                    <label for="beizhu" class="layui-form-label">
                        发现人：
                    </label>
                    <div class="layui-input-inline">
                        <span id="beizhu" >巡检员测试用户01</span>
                    </div>
                </div>
                <div class="layui-form-item">
                    <label for="quexiandengji" class="layui-form-label">
                        缺陷等级：
                    </label>
                    <div class="layui-input-inline">
                            <select id="quexiandengji">
                                <option>请选择</option>
                                <option>一般</option>
                                <option>紧急</option>
                                <option>严重</option>
                            </select>
                    </div>
                </div>
                <div class="layui-form-item" style="margin-left: 20px">
                    <input type="submit" class="layui-btn" lay-filter="save" value="保存">
                    <a href="" class="layui-btn" lay-filter="save">
                        返回
                    </a>
                </div>
            </form>
            <!-- 右侧内容框架，更改从这里结束 -->
        </div>
    </div>
    <!-- 右侧主体结束 -->
</div>
<!-- 中部结束 -->

</body>
</html>
