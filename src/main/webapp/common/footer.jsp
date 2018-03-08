<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- 底部开始 -->
<div class="footer">
    <div class="copyright">Copyright ©2017 x-admin v2.3 All Rights Reserved. 本后台系统由X前端框架提供前端技术支持</div>
</div>
<!-- 底部结束 -->
<!-- 背景切换开始 -->
<div class="bg-changer">
    <div class="swiper-container changer-list">
        <div class="swiper-wrapper">
            <div class="swiper-slide"><img class="item" src="/images/a.jpg" alt=""></div>
            <div class="swiper-slide"><img class="item" src="/images/b.jpg" alt=""></div>
            <div class="swiper-slide"><img class="item" src="/images/c.jpg" alt=""></div>
            <div class="swiper-slide"><img class="item" src="/images/d.jpg" alt=""></div>
            <div class="swiper-slide"><img class="item" src="/images/e.jpg" alt=""></div>
            <div class="swiper-slide"><img class="item" src="/images/f.jpg" alt=""></div>
            <div class="swiper-slide"><img class="item" src="/images/g.jpg" alt=""></div>
            <div class="swiper-slide"><img class="item" src="/images/h.jpg" alt=""></div>
            <div class="swiper-slide"><img class="item" src="/images/i.jpg" alt=""></div>
            <div class="swiper-slide"><img class="item" src="/images/j.jpg" alt=""></div>
            <div class="swiper-slide"><img class="item" src="/images/k.jpg" alt=""></div>
            <div class="swiper-slide"><span class="reset">初始化</span></div>
        </div>
    </div>
    <div class="bg-out"></div>
    <div id="changer-set"><i class="iconfont">&#xe696;</i></div>
</div>
<!-- 背景切换结束 -->
<!-- 页面动态效果 -->
<script>
    layui.use(['laydate'], function(){
        laydate = layui.laydate;//日期插件
        //以上模块根据需要引入
        var start = {
            min: '1900-1-1'
            ,max: '2099-06-16 23:59:59'
            ,istoday: false
            ,choose: function(datas){
                end.min = datas; //开始日选好后，重置结束日的最小日期
                end.start = datas //将结束日的初始值设定为开始日
            }
        };
        var end = {
            min: '1900-1-1'
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
    //批量删除提交
    function delAll () {
        layer.confirm('确认要删除吗？',function(index){
            //捉到所有被选中的，发异步进行删除
            layer.msg('删除成功', {icon: 1});
        });
    }
    /*用户-添加*/
    function member_add(title,url,w,h){
        x_admin_show(title,url,w,h);
    }
    /*用户-查看*/
    function member_show(title,url,id,w,h){
        x_admin_show(title,url,w,h);
    }

    /*用户-查看*/
    function member_password(title,url,id,w,h){
        x_admin_show(title,url,w,h);
    }


    /*用户-停用*/
    function member_stopState(obj,id,yState){
        layer.confirm('确认要停用吗？',function(index){
            $.ajax({
                type:"GET",
                url:"/circuit/updateYState?id="+id+"&yState="+yState,
                dataType:"json",
                success:function(data){
                    if(data.delResult == "true"){//删除成功：移除删除行
                        //发异步删除数据
                        $(obj).parents("tr").find(".td-manage").prepend('<a style="text-decoration:none" onClick="member_stopState(this,id,yState)" href="javascript:;" title="已启用"><i class="layui-icon">&#xe601;</i></a>');
                        $(obj).parents("tr").find(".td-status").html('<span class="layui-btn layui-btn-normal layui-btn-mini">停用</span>');
                        $(obj).remove();
                        layer.msg('已停用!',{icon: 6,time:1000});
                    }else if(data.delResult == "false"){//删除失败
                        //alert("对不起，删除用户【"+obj.attr("username")+"】失败");
                        changeDLGContent("对不起，删除失败");
                    }
                },
                error:function(data){
                    //alert("对不起，删除失败");
                    changeDLGContent("对不起，删除失败");
                }
            });
        });
    }
    /*用户-启用*/
    function member_stopStop(obj,id,yState){
        layer.confirm('确认要启用吗？',function(index){
            //发异步把用户状态进行更改
            $.ajax({
                type:"GET",
                url:"/circuit/updateYState?id="+id+"&yState="+yState,
                dataType:"json",
                success:function(data){
                    if(data.delResult == "true"){//删除成功：移除删除行
                        //发异步删除数据
                        $(obj).parents("tr").find(".td-manage").prepend('<a style="text-decoration:none" onClick="member_stopStop(this,id,yState)" href="javascript:;" title="停用"><i class="layui-icon">&#xe601;</i></a>');
                        $(obj).parents("tr").find(".td-status").html('<span class="layui-btn layui-btn-normal layui-btn-mini">已启动</span>');
                        $(obj).remove();
                        layer.msg('已启用!',{icon: 6,time:1000});
                    }else if(data.delResult == "false"){//删除失败
                        //alert("对不起，删除用户【"+obj.attr("username")+"】失败");
                        changeDLGContent("对不起，删除失败");
                    }
                },
                error:function(data){
                    //alert("对不起，删除失败");
                    changeDLGContent("对不起，删除失败");
                }
            });
        });
    }
    // 用户-编辑
    function member_edit (title,url,id,w,h) {
        x_admin_show(title,url,w,h);
    }
    /*杆塔-修改*/
    function member_update(title,url,id,w,h){
        x_admin_show(title,url,w,h);
    }
    /*线路管理-删除*/
    function member_cirCuitDel(obj,id){
        layer.confirm('确认要删除吗？',function(index){
            $.ajax({
                type:"GET",
                url:"/circuit/del?id="+id,
                dataType:"json",
                success:function(data){
                    if(data.delResult == "true"){//删除成功：移除删除行
                        //发异步删除数据
                        $(obj).parents("tr").remove();
                        layer.msg('已删除!',{icon:1,time:1000});
                    }else if(data.delResult == "false"){//删除失败
                        //alert("对不起，删除用户【"+obj.attr("username")+"】失败");
                        changeDLGContent("对不起，删除失败");
                    }
                },
                error:function(data){
                    //alert("对不起，删除失败");
                    changeDLGContent("对不起，删除失败");
                }
            });
        });
    }

    /*杆塔管理-删除*/
    function member_towerDel(obj,id){
        layer.confirm('确认要删除吗？',function(index){
            $.ajax({
                type:"GET",
                url:"/tower/delTower?id="+id,
                dataType:"json",
                success:function(data){
                    if(data.delResult == "true"){//删除成功：移除删除行
                        //发异步删除数据
                        $(obj).parents("tr").remove();
                        layer.msg('已删除!',{icon:1,time:1000});
                    }else if(data.delResult == "false"){//删除失败
                        //alert("对不起，删除用户【"+obj.attr("username")+"】失败");
                        changeDLGContent("对不起，删除失败");
                    }
                },
                error:function(data){
                    //alert("对不起，删除失败");
                    changeDLGContent("对不起，删除失败");
                }
            });
        });
    }

    /*杆塔管理-修改*/
    function member_towerUpdate(obj,id){
        layer.confirm('确认要修改吗？',function(index){
            $.ajax({
                type:"GET",
                url:"/tower/updateTower?id="+id,
                dataType:"json",
                success:function(data){
                    if(data.delResult == "true"){//删除成功：移除删除行
                        //发异步删除数据
                        $(obj).parents("tr").remove();
                        layer.msg('已修改!',{icon:1,time:1000});
                    }else if(data.delResult == "false"){//删除失败
                        //alert("对不起，删除用户【"+obj.attr("username")+"】失败");
                        changeDLGContent("对不起，修改失败");
                    }
                },
                error:function(data){
                    //alert("对不起，删除失败");
                    changeDLGContent("对不起，修改失败");
                }
            });



        });
    }

    function member_del(obj,id){
        $.ajax({
            type:"get",
            url:"/role/deleteRole?id="+id,
            success:function(data){
                if(data != null){
                    $(obj).parents("tr").remove();
                    layer.msg('已删除!',{icon:1,time:1000});
                }
            }
        });
    }
    function member_dea(obj,id){
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


</script>
</body>
</html>

