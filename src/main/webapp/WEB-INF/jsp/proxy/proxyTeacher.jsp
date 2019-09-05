<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <title>layui在线调试</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/layui/css/layui.css" media="all">

    <style>
        body {
            margin: 10px;
        }

        .demo-carousel {
            height: 200px;
            line-height: 200px;
            text-align: center;
        }

        .chaibing {
            width: 100%;
            height: 200px;
        }
    </style>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/layui/layui.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/layui/data.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/layui/province.js"></script>
    <script type="text/javascript" src="js/tool.js"></script>
</head>
<body>

<hr/>
<div class="chaibing">
    <%---------------------------------------------------------------%>
    <form class="layui-form" action="/students/search">
        <input name="id" readonly="" autocomplete="off" class="layui-input" type="hidden" value=0>
        <div class="layui-form-item">
            <div class="layui-inline">
                <label class="layui-form-label">姓名</label>
                <div class="layui-input-inline">
                    <input name="name" lay-verify="required" autocomplete="off" class="layui-input" type="text">
                </div>
            </div>
            <div class="layui-inline">
                <label class="layui-form-label">加入时间 </label>
                <div class="layui-input-inline">
                    <input type="text" class="layui-input" id="test1" name="score" lay-verify="required|number"
                           autocomplete="off">
                </div>

            </div>


            <%--eeeeeee--%>

            <label class="layui-form-label">地址：</label>
            <div class="layui-input-inline">
                <select name="provid" id="provid" lay-filter="provid">
                    <option value="">请选择省</option>
                </select>
            </div>
            <div class="layui-input-inline">
                <select name="cityid" id="cityid" lay-filter="cityid">
                    <option value="">请选择市</option>
                </select>
            </div>
            <div class="layui-input-inline">
                <select name="areaid" id="areaid" lay-filter="areaid">
                    <option value="">请选择县/区</option>
                </select>
            </div>
            <%--eeeeeeeeee--%>


            <div class="layui-inline">
                <label class="layui-form-label">身份证 </label>
                <div class="layui-input-inline">
                    <input name="major" lay-verify="required" autocomplete="off" class="layui-input"
                           type="text">
                </div>
            </div>
            <div class="layui-inline">
                <label class="layui-form-label">上级人 </label>
                <div class="layui-input-inline">
                    <input name="major" lay-verify="required" autocomplete="off" class="layui-input"
                           type="text">
                </div>
            </div>
        </div>
        <div class="layui-inline">
            <div class="layui-input-block">
                <button class="layui-btn" lay-submit="" lay-filter="addStudent">查询</button>
            </div>
        </div>

        <div class="layui-inline">
            <div class="layui-input-block">
                <button class="layui-btn" lay-submit="" lay-filter="addStudent">添加</button>
            </div>
        </div>
    </form>
    <%-------------------------------------------------------------%>
</div>
<hr/>
<span>查询结果</span>
<table class="layui-hide" id="demo" lay-filter="test"></table>
<span>操作</span>
<a><span>操作</span></a>
<script type="text/html" id="barDemo">

    <a name="ss" class="layui-btn layui-btn-primary layui-btn-xs" lay-event="detail">详情</a>
    <%-- <a class="layui-btn layui-btn-xs" lay-event="edit">编辑</a>
     <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>--%>
</script>


<script>
    var defaults = {
        s1: 'provid',
        s2: 'cityid',
        s3: 'areaid',
        v1: null,
        v2: null,
        v3: null
    };

    layui.use('laydate', function () {
        var laydate = layui.laydate;

        //执行一个laydate实例
        laydate.render({
            elem: '#test1' //指定元素
        });
    });

    layui.use(['laydate', 'laypage', 'layer', 'table', 'element', 'slider'], function () {
        var $ = layui.jquery
            , laydate = layui.laydate //日期
            , laypage = layui.laypage //分页
            , layer = layui.layer //弹层
            , table = layui.table //表格
            , element = layui.element //元素操作
            , slider = layui.slider //滑块
            , tableObj = table.render({});


        //执行一个 table 实例
        table.render({
            elem: '#demo'
            , height: 420
            , url: '${pageContext.request.contextPath}/students/students' //数据接口
            , limit: 10
            //,page:true(自带的这个要注掉)
            , page: { //支持传入 laypage 组件的所有参数（某些参数除外，如：jump/elem） - 详见文档
                layout: ['count', 'prev', 'page', 'next', 'limit', 'refresh', 'skip']//自定义分页布局
                , limits: [10, 15, 20]
                , first: false //不显示首页
                , last: false //不显示尾页

            }
            , title: '用户表'
            /* , toolbar: 'default'*/ //开启工具栏，此处显示默认图标，可以自定义模板，详见文档
            // ,totalRow: true 开启合计行
            , cols: [[ //表头
                {type: 'checkbox', fixed: 'left'}
                , {field: 'id', title: 'ID', width: 0, sort: true, fixed: 'left', totalRowText: '合计：'}
                , {field: 'name', title: '姓名', width: 70}
                , {field: 'sex', title: '性别', width: 50,}
                , {field: 'city', title: '年龄', width: 100}
                , {field: 'email', title: '身份证号', width: 200, sort: true}
                , {field: 'major', title: '地址', width: 100}
                , {field: 'sign', title: '级别', width: 100}
                , {field: 'sign', title: '上级姓名', width: 150}
                , {field: 'score', title: '加入时间', width: 150}
                , {field: 'sign', title: '联系电话', width: 150}
                , {field: 'sign', title: '状态', width: 150}
                , {field: '     ss', title: '操作', width: 150}
                , {fixed: 'right', width: 165, align: 'center', toolbar: '#barDemo'}
            ]]

        });


        //监听行工具事件
        table.on('tool(test)', function (obj) { //注：tool 是工具条事件名，test 是 table 原始容器的属性 lay-filter="对应的值"
            var data = obj.data //获得当前行数据
                , layEvent = obj.event //获得 lay-event 对应的值
                , editList = [];
            $.each(data, function (name, value) {
                editList.push(value);
            });
            if (layEvent === 'detail') {
                //脚本编辑弹出层
                var name = encodeURIComponent(data.toolName);
                // console.log(data.toolName);
                layer.open({
                    type: 2,
                    title: '学员信息',
                    shadeClose: true,
                    shade: 0.8,
                    maxmin: true,
                    area: ['70%', '70%'],

                    content: 'studentInfo?toolSceneId=' + data.toolSceneId + '&' + 'id=' + data.id,

                    success: function (layero, index) {
                        var body = layer.getChildFrame('body', index);
                        var iframeWin = window[layero.find('iframe')[0]['name']]; //得到iframe页的窗口对象，执行iframe页的方法：iframeWin.method();
                        var inputList = body.find("input");
                        for (var i = 0; i < inputList.length; i++) {
                            $(inputList[i]).val(editList[i]);
                        }
                    }
                });

            } else if (layEvent === 'del') {
                layer.confirm('真的删除行么', function (index) {

                    //向服务端发送删除指令
                    $.ajax({
                        type: "post",
                        url: "${pageContext.request.contextPath}/students/del",
                        dataType: 'json',
                        // async: false,
                        data: "id=" + data.id,
                        dataType: "json",
                        success: function (data) {
                            var message = data.msg;
                            if (data.msg === '0') {
                                obj.del();
                                layer.close(index);
                                layer.alert("删除成功", {icon: 1, time: 2000});
                                tableObj.reload({
                                    url: '${pageContext.request.contextPath}/students/students'
                                });
                            } else {
                                layer.alert("删除失败", {
                                    icon: 2, title: '提示'
                                });
                                return;
                            }
                        },
                        error: function () {
                        }

                    });
                });
            } else if (layEvent === 'edit') {
                //脚本编辑弹出层
                var name = encodeURIComponent(data.toolName);
                // console.log(data.toolName);
                layer.open({
                    type: 2,
                    title: '编辑学员信息',
                    shadeClose: true,
                    shade: 0.8,
                    maxmin: true,
                    area: ['70%', '70%'],
                    content: 'studentEdit?toolSceneId=' + data.toolSceneId + '&' + 'id=' + data.id,
                    success: function (layero, index) {
                        var body = layer.getChildFrame('body', index);
                        var iframeWin = window[layero.find('iframe')[0]['name']]; //得到iframe页的窗口对象，执行iframe页的方法：iframeWin.method();
                        var inputList = body.find("input");
                        for (var i = 0; i < inputList.length; i++) {
                            $(inputList[i]).val(editList[i]);
                        }
                    }
                });

            }
        });


    });
</script>
</body>
</html>
