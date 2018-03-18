<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- 中部开始 -->
<div class="wrapper">
    <!-- 左侧菜单开始 -->
    <div class="left-nav">
        <div id="side-nav">
            <ul id="nav">
                <li class="list">
                    <a href="javascript:;">
                        <i class="iconfont">&#xe70b;</i>
                        我的工作平台
                        <i class="iconfont nav_right">&#xe697;</i>
                    </a>
                    <ul class="sub-menu">
                        <li class="current">
                            <a href="/jsp/platform-todo.jsp">
                                <i class="iconfont">&#xe6a7;</i>
                                待办列表
                            </a>
                        </li>
                        <li>
                            <a href="/jsp/platform-mydata.jsp">
                                <i class="iconfont">&#xe6a7;</i>
                                个人资料修改
                            </a>
                        </li>
                    </ul>
                </li>
                <li class="list" >
                    <a href="javascript:;">
                        <i class="iconfont">&#xe6a3;</i>
                        系统管理
                        <i class="iconfont nav_right">&#xe697;</i>
                    </a>
                    <ul class="sub-menu">
                        <li>
                            <a href="/role/queryRole">
                                <i class="iconfont">&#xe6a7;</i>
                                角色管理
                            </a>
                        </li>

                        <li>
                            <a href="/user/queryUser">
                                <i class="iconfont">&#xe6a7;</i>
                                用户管理
                            </a>
                        </li>

                        <li>
                            <a href="./category.html">
                                <i class="iconfont">&#xe6a7;</i>
                                角色权限配置
                            </a>
                        </li>

                        <li>
                            <a href="./category.html">
                                <i class="iconfont">&#xe6a7;</i>
                                系统配置
                            </a>
                        </li>
                    </ul>
                </li>
                <li class="list" >
                    <a href="/tower/selTower">
                        <i class="iconfont">&#xe6a3;</i>
                        杆塔管理
                        <i class="iconfont nav_right">&#xe697;</i>
                    </a>
                </li>
                <li class="list" >
                    <a href="/circuit/selCircuit">
                        <i class="iconfont">&#xe6a3;</i>
                       线路管理
                        <i class="iconfont nav_right">&#xe697;</i>
                    </a>
                </li>
                <li class="list">
                    <a href="javascript:;">
                        <i class="iconfont">&#xe70b;</i>
                       缺陷管理
                        <i class="iconfont nav_right">&#xe697;</i>
                    </a>
                    <ul class="sub-menu">
                        <li class="current">
                            <a href="/flawtype/queryFlaw">
                                <i class="iconfont">&#xe6a7;</i>
                                缺陷类型设置
                            </a>
                        </li>
                        <li>
                            <a href="/flaw/queryFlaw">
                                <i class="iconfont">&#xe6a7;</i>
                                缺陷等级确认
                            </a>
                        </li>
                    </ul>
                </li>

                <li class="list">
                    <a href="javascript:;">
                        <i class="iconfont">&#xe70b;</i>
                        巡检任务管理
                        <i class="iconfont nav_right">&#xe697;</i>
                    </a>
                    <ul class="sub-menu">
                        <li class="current">
                            <a href="/PollingMission/showpollingMission">
                                <i class="iconfont">&#xe6a7;</i>
                                巡检任务制定与分配
                            </a>
                        </li>
                        <li>
                            <a href="/PollingMission/showpollingMissionReceipt">
                                <i class="iconfont">&#xe6a7;</i>
                                巡检任务执行与回执
                            </a>
                        </li>
                        <li>
                            <a href="/jsp/solve_Query.jsp">
                                <i class="iconfont">&#xe6a7;</i>
                                缺陷查询
                            </a>
                        </li>
                    </ul>
                </li>

                <li class="list">
                    <a href="javascript:;">
                        <i class="iconfont">&#xe70b;</i>
                        消缺任务管理
                        <i class="iconfont nav_right">&#xe697;</i>
                    </a>
                    <ul class="sub-menu">
                        <li class="current">
                            <a href="/flawMission/flawMissionForPager">
                                <i class="iconfont">&#xe6a7;</i>
                                消缺任务制定与分配
                            </a>
                        </li>
                        <li>
                            <a href="/flawMission/flawMissionExcePager">
                                <i class="iconfont">&#xe6a7;</i>
                                消缺任务执行与回执
                            </a>
                        </li>
                        <li>
                            <a href="/flawMission/flawMissionPager">
                                <i class="iconfont">&#xe6a7;</i>
                                消缺查询
                            </a>
                        </li>
                    </ul>
                </li>

                <li class="list">
                    <a href="javascript:;">
                        <i class="iconfont">&#xe70b;</i>
                        信息统计
                        <i class="iconfont nav_right">&#xe697;</i>
                    </a>
                    <ul class="sub-menu">
                        <li class="current">
                            <a href="/jsp/inspectionTask_recordStatis.jsp">
                                <i class="iconfont">&#xe6a7;</i>
                                巡检记录统计
                            </a>
                        </li>
                        <li>
                            <a href="/jsp/solveTask_recordStatis.jsp">
                                <i class="iconfont">&#xe6a7;</i>
                                消缺记录统计
                            </a>
                        </li>
                    </ul>
                </li>

            </ul>
        </div>
    </div>
    <!-- 左侧菜单结束 -->