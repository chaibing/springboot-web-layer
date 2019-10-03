<%--
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


    </style>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/layui/layui.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/layui/data.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/layui/province.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/layui/tianjia.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/tool.js"></script>
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
            alert(cid);
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
</head>
<body>


<form id="roleForm" class=" layui-form-pane" method="post" style="margin-top: 20px;" action="/proxy/addteacher">
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




    <div class="layui-inline">
        <label class="layui-form-label">姓名</label>
        <div class="layui-input-inline">
            <input name="name" type="text">
        </div>
    </div>
    <div class="layui-inline">
        <label class="layui-form-label">上级人姓名</label>
        <div class="layui-input-inline">
            <input name="name" type="text">
        </div>
    </div>



</form>

</body>


</html>
--%>

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

    </style>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/layui/layui.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/layui/data.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/layui/province.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/layui/tianjia.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/tool.js"></script>
</head>
<body>

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
                $("#idcard").empty();
                var id = data.id
                var idcard = data.idcard

                $("#idcard").append("<option value='" + data.id + "'>" + data.idcard + "</option>")


                /*for (var i = 1; i < data.length; i++) {
                    $("#idcard").append("<option value='" + data[i].id + "'>" + data[i].idcard + "</option>")
                }*/

            }
        )
    }
</script>


</body>
</html>

