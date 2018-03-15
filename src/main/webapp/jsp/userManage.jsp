<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>



<%@include file="/common/top.jsp"%>  <%--头部--%>
<%@include file="/common/left.jsp"%>  <%--中间-左--%>
<!-- 右侧主体开始 -->
<script type="text/javascript" src="js/jquery-1.12.4.js"></script>
<script type="text/javascript">

</script>
<div class="page-content">
    <div class="content">
        系统管理>>用户管理
        <!-- 右侧内容框架，更改从这里开始 -->
        <form class="layui-form xbs" action="/user/queryUser" method="post">
            <input name="pageIndex" value="1" type="hidden" >

            <div class="layui-form-pane" style="text-align: center;">

                <div class="layui-form-item" style="display: inline-block;">
                    <label class="layui-form-label xbs768">角色名称：</label>
                    <div class="layui-input-inline xbs768" >
                        <input class="layui-input" name="uName" placeholder="请输入角色名称...">
                    </div>
                    <label class="layui-form-label xbs768">使用状态</label>
                    <div class="layui-input-inline">
                        <select name="ustate">
                            <option value="-1">--请选择--</option>
                            <option value="1"${ustate == 1 ? "ustate=\"ustate\"":""}>正常</option>
                            <option value="0"${ustate == 0 ? "ustate=\"ustate\"":""}>冻结</option>
                        </select>
                    </div>

                    <div class="layui-input-inline" style="width:80px">
                        <button class="layui-btn"  lay-submit="" lay-filter="sreach"><i class="layui-icon">&#xe615;</i></button>
                    </div>
                </div>
            </div>

        </form>
        <xblock>
            <a class="layui-btn layui-btn-danger" href="javascript:void(0);" onclick="batchUser()"><i class="layui-icon">&#xe640;</i>批量删除</a>
            <a href="/user/add"  class="layui-btn"  onclick="member_add('添加用户','/jsp/user_add.jsp','600','500')"><i class="layui-icon">&#xe608;</i>添加用户</a><span class="x-right" style="line-height:40px">共有数据：88 条</span></xblock>
        <table class="layui-table">
            <thead>
            <tr>
                <th>
                    <input type="checkbox" name="all" id="all" onclick="checkAll()">
                </th>
                <th>
                    用户账号
                </th>
                <th>
                    用户名称
                </th>
                <th>
                    角色
                </th>
                <th>
                    邮箱
                </th>
                <th>
                    最后登录时间
                </th>
                <th>
                    状态（正常/冻结）
                </th>
                <th>
                    操作
                </th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${pag.datas}" var="use" >
                <tr>
                    <td>
                        <input type="checkbox" id="toDelUser" value="${use.id}" name="toDelUser" class="toDelUser">
                    </td>
                    <td>
                        <u style="cursor:pointer" onclick="member_show('张三','member-show.html','10001','360','400')">
                                ${use.account}
                        </u>
                    </td>
                    <td >
                            ${use.uName}
                    </td>
                    <td >
                            ${use.role.rName}
                    </td>
                    <td >
                            ${use.email}
                    </td>
                    <td>
                            ${use.lastTime}
                    </td>
                    <td class="td-status">
                            <span class="layui-btn layui-btn-normal layui-btn-mini">
                          <c:if test="${use.ustate==0}">禁用</c:if>
                                <c:if test="${use.ustate==1}">启用</c:if>
                            </span>

                    </td>
                    <td class="td-manage">
                        <a style="text-decoration:none" onclick="member_stop(this,'10001')" href="javascript:;" title="冻结">
                                <%--<i class="layui-icon">&#xe601;</i>--%>
                        </a>
                        <a style="text-decoration:none"  onclick="member_password('修改用户','/jsp/user_modify.jsp','10001','600','500')"
                           href="/user/updateId?id=${use.id}" title="修改用户">
                            <i class="layui-icon">&#xe631;</i>
                        </a>
                        <a  class="Del" title="删除" href="#"  onclick="member_dea2(this,${use.id})"
                            style="text-decoration:none">
                            <i class="layui-icon">&#xe640;</i>
                        </a>
                        <a title="log日志" href="javascript:;" onclick="member_del(this,'1')"
                           style="text-decoration:none">
                                <%--<i class="layui-icon">&#xe622;</i>--%>
                        </a>

                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
        <input type="hidden" id="totalPageCount" value="${pag.totalPage}"/>
        <c:import url="rollpage.jsp">
            <c:param name="totalCount" value="${pag.totalRows}"/>
            <c:param name="currentPageNo" value="${pag.pageNo}"/>
            <c:param name="totalPageCount" value="${pag.totalPage}"/>
        </c:import>
        <!-- 右侧内容框架，更改从这里结束 -->
        <%--<a href="/user/queryUser?pageNo=1">首页</a>--%>
        <%--<a href="/user/queryUser?pageNo=${pag.pageNo-1}">上一页</a>--%>
        <%--<a href="/user/queryUser?pageNo=${pag.pageNo+1}">下一页</a>--%>
        <%--<a href="/user/queryUser?pageNo=${pag.totalPage}">尾页</a>--%>
    </div>
</div>
<!-- 右侧主体结束 -->
</div>
<script>
    function member_dea2(obj,id){
        $.ajax({
            type:"get",
            url:"/user/Del?id="+id,
            success:function(data){
                if(data != null){
                    $(obj).parents("tr").remove();
                    layer.msg('已删除!',{icon:1,time:1000});
                }
            }
        });
    }
    function batchUser() {
        var val = "";
        var groupCheckbox = $(".toDelUser");
        for (i = 0; i < groupCheckbox.length; i++) {
            if (groupCheckbox[i].checked) {
                val += groupCheckbox[i].value + ",";
            }
        }
        if(val==""){
            alert("请选择要删除的分类名称！");
            return false;
        }
        $.ajax({
            url : 'batchDelUser',// 跳转到ClassifyServlet
            data : {
                "name" : val
            },
            type : 'post',
            dataType : 'json',
            success : function(data) {
                window.location.href = "queryUser";
            },
            error : function() {
                alert("异常！");
            }
        });
    };
    $("input[name='all']").click(function(){
        //判断当前点击的复选框处于什么状态$(this).is(":checked") 返回的是布尔类型
        if($(this).is(":checked")){
            $("input[name='toDelUser']").prop("checked",true);
        }else{
            $("input[name='toDelUser']").prop("checked",false);
        }
    });
</script>
<%@include file="/common/footer.jsp"%>
