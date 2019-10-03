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
    <script type="text/javascript" src="${pageContext.request.contextPath}/layui/tianjia.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/tool.js"></script>
</head>
<body>

<hr/>
<div class="chaibing">
    <form class="layui-form" action="/proxy/lists">
        <input name="id" readonly="" autocomplete="off" class="layui-input" type="hidden" value=0>
        <div class="layui-form-item">
            <div class="layui-inline">
                <label class="layui-form-label">姓名</label>
                <div class="layui-input-inline">
                    <input name="name" autocomplete="off" class="layui-input" type="text">
                </div>
            </div>
            <div class="layui-inline">
                <label class="layui-form-label">加入时间 </label>
                <div class="layui-input-inline">
                    <input type="text" class="layui-input" id="test1" name="score"  <%--lay-verify="required|number"--%>
                           autocomplete="off">
                </div>

            </div>

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


            <div class="layui-inline">
                <label class="layui-form-label">身份证 </label>
                <div class="layui-input-inline">
                    <input name="major" lay-verify="identity" autocomplete="off" class="layui-input"
                           type="text">
                </div>
            </div>
            <div class="layui-inline">
                <label class="layui-form-label">上级人 </label>
                <div class="layui-input-inline">
                    <input name="major" autocomplete="off" class="layui-input"
                           type="text">
                </div>
            </div>
        </div>
        <div class="layui-inline">
            <div class="layui-input-block">
                <button class="layui-btn" lay-submit="" lay-filter="addStudent">查询</button>
            </div>
        </div>


    </form>
    <div>
        <button class="layui-btn layui-btn-normal" onclick="chaibing()">新增</button>
    </div>

</div>
<!--添加或编辑-->
<div id="setRole" class="layer_self_wrap" style="width:100%;display:none;">
    <form id="roleForm" class="<%--layui-form --%>layui-form-pane" method="post" style="margin-top: 20px;"
          action="/proxy/addteacher">

        <%--
                <input id="pageNum" type="hidden" name="pageNum"/>
        --%>
        <input id="id" type="hidden" name="id"/>

        <div class="layui-form-item">
            <label class="layui-form-label">姓名<span style="color:red">*</span></label>
            <div class="layui-input-inline">
                <input id="roleName" name="name" autocomplete="off" class="layui-input"
                       type="text"/>
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label">性别<span style="color:red">*</span></label>
            <div class="layui-input-block">
                <input type="radio" name="sex" value="男" title="男">
                <input type="radio" name="sex" value="女" title="女" checked>
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label">身份证号<span style="color:red">*</span></label>
            <div class="layui-input-inline">
                <input type="text" id="Gra_IDCard" name="idcard" class="layui-input" onChange="IDCardChange()"/>
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">年龄<span style="color:red">*</span></label>
            <div class="layui-input-inline">
                <input name="number" type="number" class="layui-input" readonly="readonly" id="Gra_Age"/>
            </div>
        </div>


        <div class="layui-form-item">
            <label class="layui-form-label">电话<span style="color:red">*</span></label>
            <div class="layui-input-inline">
                <input id="roleDesc5" name="phone" autocomplete="off" class="layui-input"
                       type="text"/>
            </div>
        </div>
        <%--    <div class="layui-form-item">
                <div>
                    <label class="layui-form-label">地址<span style="color:red">*</span></label>
                    <div class="layui-input-inline">
                        <select name="provid" id="provid1" lay-filter="provid">
                            <option value="">请选择省</option>
                        </select>
                    </div>
                    <div class="layui-input-inline">
                        <select name="cityid" id="cityid1" lay-filter="cityid">
                            <option value="">请选择市</option>
                        </select>
                    </div>
                    <div class="layui-input-inline">
                        <select name="areaid" id="areaid1" lay-filter="areaid">
                            <option value="">请选择县/区</option>
                        </select>
                    </div>

                </div>

            </div>
    --%>


        <%--三级联动 ======================================start--%>
        <div class="layui-form-item">
            <label class="layui-form-label">地址<span style="color:red">*</span></label>
            <div class="layui-input-inline">
                <select id="sheng" onchange="shi()" name="cid">
                    <option value="0">-请选择省-</option>
                </select>
            </div>

            <div class="layui-input-inline">
                <select id="area" onchange="xian()" name="aid">
                    <option value="0">-请选择市-</option>
                </select>
            </div>

            <div class="layui-input-inline">
                <select id="shop" onchange="" name="sid">
                    <option value="0">-请选择县/区-</option>
                </select>
            </div>
        </div>

        <%--三级联动 ======================================end--%>

        <div class="layui-form-item">
            <label class="layui-form-label">加入时间<span style="color:red">*</span></label>
            <div class="layui-input-inline">
                <input name="join_date" autocomplete="off" class="layui-input" type="text" id="test11"/>
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">级别<span style="color:red">*</span></label>
            <select type="text" name="level_code" id="selectcid" onchange="jibie()">
                <option value="0">----请选择-----</option>
            </select>
        </div>
        <%--</div>--%>
        <div class="layui-form-item">
            <label class="layui-form-label">点位<span style="color:red">*</span></label>
            <select type="text" name="points" id="roleDesrc3">
                <option value="0">----自动带出点位-----</option>

            </select>
        </div>

        <%--000000000000000000000000000000000000000000000000000000--   废弃%>
      <%--  <div class="layui-form-item">
            <label class="layui-form-label">上级人姓名<span style="color:red">*</span></label>
            <div class="layui-input-inline ">
                <select type="text" name="name" id="selectcid_one">
                    <option value="0">----请选择-----</option>
                </select>
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">上级人身份证号<span style="color:red">*</span></label>
            <div class="layui-input-inline">
                <input id="roleDesrc31" name="idcard " class="layui-input" type="text"/>
            </div>
        </div>--%>

        <%--000000000000000000000000000000000000000000000000000000--    废弃%>
        <%----------------------------------------------- start--%>


        <div class="layui-form-item">
            <label class="layui-form-label">上级人姓名<span style="color:red">*</span></label>
            <div class="layui-input-inline">
                <select id="superior_name" onchange="HuoquIdcard()" name="cid">
                    <option value="0">-请选择-</option>
                </select>
            </div>

        </div>
        <div class="layui-form-item">

            <label class="layui-form-label">上级身份证<span style="color:red">*</span></label>
            <div class="layui-input-inline">
                <select id="idcard" name="idcard">
                    <option value="0">-请选择-</option>
                </select>
            </div>
        </div>


        <%----------------------------------------------- end--%>

        <div class="layui-form-item">
            <label class="layui-form-label">状态<span style="color:red">*</span></label>
            <div class="layui-input-inline">
                <select name="del" xm-select="permissions">
                    <option value="">----请选择-----</option>
                    <option value="1">在职</option>
                    <option value="2">离职</option>
                </select>
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">权限<span style="color:red">*</span></label>
            <div class="layui-input-inline">
                <select name="power" xm-select="permissions">
                    <option value="1">----请选择-----</option>
                    <option value="1">北京</option>
                    <option value="2">上海</option>
                    <option value="3">广州</option>
                    <option value="4">深圳</option>
                    <option value="5">天津</option>
                </select>
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">微信</label>
            <div class="layui-input-inline">
                <input id="tt11" name="vx" autocomplete="off" class="layui-input" type="text"/>

            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">qq</label>
            <div class="layui-input-inline">
                <input id="22" name="qq" autocomplete="off" class="layui-input"
                       type="text"/>
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">银行卡</label>
            <div class="layui-input-inline">
                <button type="button" class="layui-btn" id="yinhangka">
                    <i class="layui-icon">&#xe67c;</i>上传图片
                </button>
            </div>

        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">备注</label>
            <div class="layui-input-inline">
                <input id="rr1" name="roleDesc" autocomplete="off" class="layui-input"
                       type="text"/>
            </div>
        </div>
        <div class="layui-form-item">
            <div class="layui-input-block" style="margin-left: 10px;">
                <button class="layui-btn" lay-submit="" lay-filter="roleSubmit">提交</button>
                <button type="reset" class="layui-btn layui-btn-primary">重置</button>
            </div>
        </div>

    </form>
</div>
<hr/>
<span>查询结果</span>
<table class="layui-hide" id="demo" lay-filter="test"></table>

<script type="text/html" id="barDemo">
    <a name="ss" class="layui-btn layui-btn-primary layui-btn-xs" lay-event="detail">详情</a>
    <a class="layui-btn layui-btn-xs" lay-event="edit">编辑</a>
    <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
</script>

<script>
    layui.use('laydate', function () {
        var laydate = layui.laydate;

        //执行一个laydate实例
        laydate.render({
            elem: '#test11' //指定元素
        });
    });
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
            , url: '${pageContext.request.contextPath}/proxy/lists' //数据接口
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
                , {field: 'name', title: '姓名', width: 90}
                , {field: 'sex', title: '性别', width: 70,}
                , {field: 'number', title: '年龄', width: 100}
                , {field: 'idcard', title: '身份证号', width: 230, sort: true}
                , {field: 'area_code', title: '地址', width: 100}
                , {field: 'x', title: '级别', width: 100}
                , {field: 'x', title: '上级姓名', width: 100}
                , {field: 'join_date', title: '加入时间', width: 150}
                , {field: 'phone', title: '联系电话', width: 150}
                , {field: 'del', title: '状态', width: 150}
                , {field: 'xx', title: '操作', width: 150}
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
<%--根据身份证号计算年龄https://blog.csdn.net/weixin_34293902/article/details/86084979--%>
<script>
    //身份证改变事件（孕妇）
    var IDCardChange = function () {

        //获取身份证号
        var idCard = $('#Gra_IDCard').val();

        //判断身份证长度
        if (idCard.length == 18) {
            //获取计算后出生日期
            var birthDateStr = getBirthDate(idCard);
            //设置出生日期
            $('#Gra_BirthDate').val(birthDateStr);

            //获取当前的日期
            var nowDateStr = getNowDate();
            //获取计算后年龄(两个日期之间)
            var age = getAge(birthDateStr, nowDateStr);
            //设置年龄
            $('#Gra_Age').val(age);
        }
    }

    //根据身份证号计算出生日期
    var getBirthDate = function (IDCard) {
        //获取身份证号的年、月、日
        var year = IDCard.substring(6, 10);
        var month = IDCard.substring(10, 12);
        var day = IDCard.substring(12, 14);
        //拼接成出生日期
        var birthDate = year + '-' + month + '-' + day;
        return birthDate;
    }

    //根据两个日期计算年龄（是否过生日）
    var getAge = function (startDateStr, endDateStr) {
        //计算两个日期相差多少年
        var startDate = new Date(startDateStr);
        var endDate = new Date(endDateStr);
        var yearNum = endDate.getFullYear() - startDate.getFullYear();
        //获取两个日期（月+日）部分
        var sStr = startDateStr.substring(5, 10);
        var eStr = endDateStr.substring(5, 10);
        //判断两个日期大小
        //判断是否过生日
        if (new Date(sStr) <= new Date(eStr)) {
            return yearNum + 1;
        } else {
            return yearNum;
        }
    }

    ///获取当前日期
    var getNowDate = function () {
        var d = new Date();
        var year = d.getFullYear();
        var month = d.getMonth() + 1;
        var day = d.getDate();
        var dateStr = year + '-' + getFormatDate(month) + '-' + getFormatDate(day);
        return dateStr;
    }

    //格式化日期的月份或天数的显示（小于10，在前面增加0）
    function getFormatDate(value) {
        if (value == undefined || value == "") {
            return '';
        }
        var str = value;
        if (parseInt(value) < 10) {
            str = '0' + value;
        }
        return str;
    }
</script>


<%--表单下拉框动态获取数据  https://blog.csdn.net/duguyuyun12345/article/details/82818193  start--%>

<script>
    layui.use('form', function () {
        var form = layui.form;
        $.ajax({
            url: '/proxy/xialakuang',
            dataType: 'json',
            type: 'post',
            success: function (data) {
                $.each(data, function (index, category) {
                    var cid = data[index].id;
                    var cname = data[index].name;
                    $("#selectcid").append("<option value='" + cid + "'>" + cname + "</option>");
                    //form.render()渲染将option添加进去
                    form.render();
                });

                /*-------------------------------------*/
                $.each(data, function (index, category) {
                    var id = data[index].point.id;
                    var points = data[index].point.points;
                    $("#roleDesrc3").empty();
                    $("#roleDesrc3").append("<option value='" + id + "'>" + points + "</option>");
                    //form.render()渲染将option添加进去
                    form.render();
                });


            }
        });
    });
</script>

<%--表单下拉框动态获取数据  https://blog.csdn.net/duguyuyun12345/article/details/82818193  end--%>


<%--表单下拉框动态获取数据  获取上级人信息  https://blog.csdn.net/duguyuyun12345/article/details/82818193  start--%>


<script>
    layui.use('form', function () {
        var form = layui.form;
        $.ajax({
            url: '/proxy/list',//获取上级人姓名 身份证号
            dataType: 'json',
            type: 'post',
            success: function (data) {
                $.each(data, function (index, category) {
                    var cid = data[index].id;
                    var cname = data[index].name;
                    $("#selectcid_one").append("<option value='" + cid + "'>" + cname + "</option>"); //往上级人下拉框里面填充数据
                    //form.render()渲染将option添加进去
                    form.render();
                });
            }
        });
    });
</script>


<%--表单下拉框动态获取数据  获取上级人信息  https://blog.csdn.net/duguyuyun12345/article/details/82818193     end--%>


<%--根据 级别获取点位=====================================================   end--%>

<%--银行卡获取图片===================================================      start--%>
<script>
    layui.use('upload', function () {

        var upload = layui.upload;


        //执行实例
        var uploadInst = upload.render({
                elem: '#yinhangka' //绑定元素
                , acceptMime: 'image/!*'//（只显示图片文件）
                , url: '/oss/uploadFile' //上传接口
                , done:
                    function (res) {
                        //上传完毕回调
                    }
                ,
                error: function () {
                    //请求异常回调
                    alert("文件上传异常")
                }
            })
        ;
    });
</script>
<%--银行卡获取图片===================================================      end--%>

<%--三级联动===================================================      start--%>
<script type="text/javascript">
    $(function () {  //一开始初始化加载全部一级城市
        $.post(
            "area/Province",
            {},
            function (data) {
                for (var i = 0; i < data.length; i++) {
                    $("#sheng").append("<option  value='" + data[i].code + "'>" + data[i].name + "</option>")
                }
            }
        )
    })

    function shi() {//加载二级城市
        var cid = $("#sheng").val();
        $.post(
            "area/city",
            {cid: cid},
            function (data) {
                $("#area").empty();
                for (var i = 0; i < data.length; i++) {
                    $("#area").append("<option value='" + data[i].code + "'>" + data[i].name + "</option>")
                }
            }
        )
    }

    function xian() {
        var aid = $("#area").val();
        $.post(
            "area/area1",
            {aid: aid},
            function (data) {
                $("#shop").empty();
                for (var i = 0; i < data.length; i++) {
                    $("#shop").append("<option value='" + data[i].code + "'>" + data[i].name + "</option>")
                }
            }
        )
    }

</script>


<%--三级联动===================================================      end--%>


<%--000000000000000000000000000000000000000000000000000000000000000   start--%>

<script type="text/javascript">
    $(function () {  //一开始初始化加载全部一级城市
        $.post(
            "proxy/list",
            {},
            function (data) {
                for (var i = 0; i < data.length; i++) {
                    $("#superior_name").append("<option  value='" + data[i].id + "'>" + data[i].name + "</option>")
                }
            }
        )
    })

    function HuoquIdcard() {//加载二级城市
        var cid = $("#superior_name").val();
        $.post(
            "proxy/selectidcardByid",
            {cid: cid},
            function (data) {

                var id = data.id
                var idcard = data.idcard
                $("#idcard").empty();
                $("#idcard").append("<option value='" + data.id + "'>" + data.idcard + "</option>")
            }
        )
    }
</script>
<%--000000000000000000000000000000000000000000000000000000000000000   start--%>


</body>
</html>
